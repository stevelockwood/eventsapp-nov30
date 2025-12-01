resource "kubernetes_job" "db_initializer" {
  depends_on = [helm_release.database_server]
  metadata {
    name = "db-initializer"
  }
  spec {
    template {
      spec {
        container {
          name              = "db-init-job"
          image             = var.events_db_init_image
          image_pull_policy = "Always"

          env {
            name  = "DBHOST"
            value = "database-server-mariadb"
          }
          env {
            name  = "DBUSER"
            value = "root"
          }
          env {
            name = "DBPASSWORD"
            value_from {
              secret_key_ref {
                name = "database-server-mariadb"
                key  = "mariadb-root-password"
              }
            }
          }
        }
        restart_policy = "Never"
      }
    }
    backoff_limit = 4
  }
}
