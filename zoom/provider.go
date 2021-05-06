package zoom

import (
	"os"
	"terraform-provider-zoom/client"
	tkn "terraform-provider-zoom/token"
	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
)

func Provider() *schema.Provider {
	return &schema.Provider{
		Schema: map[string]*schema.Schema{
			"apisecret": &schema.Schema{
				Type:      schema.TypeString,
				Optional:  true,
				Sensitive: true,
			},
			"apikey": &schema.Schema{
				Type:      schema.TypeString,
				Optional:  true,
				Sensitive: true,
			},
		},
		ResourcesMap: map[string]*schema.Resource{
			"zoom_user": resourceUser(),
		},
		DataSourcesMap: map[string]*schema.Resource{
			"zoom_user": dataSourceUser(),
		},
		ConfigureFunc:  providerConfigure,
	}
}

func providerConfigure(d *schema.ResourceData) (interface{}, error) {
	apisecret := d.Get("apisecret").(string)
	apikey := d.Get("apikey").(string)
	token := tkn.TokenGenerate(apisecret, apikey)
	os.Setenv("ZOOM_TOKEN", token)
	return client.NewClient(token), nil
}
