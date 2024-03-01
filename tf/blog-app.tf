resource "digitalocean_app" "tmaffia-com-blog" {
  spec {
    name   = "tmaffia-com-blog"
    region = "nyc"

    domain {
      name = "blog.tmaffia.com"
    }

    static_site {
      name             = "blog"
      build_command    = "rm -r ./public; hugo --destination ./public"
      environment_slug = "hugo"

      github {
        repo           = "tmaffia/tmaffia-com-blog"
        branch         = "release"
        deploy_on_push = true
      }
    }
  }
}
