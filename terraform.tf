terraform {
  backend "remote" {
    organization = "pangavhane"
    workspaces {
      name = "Kite_Production"
    }
  }
}