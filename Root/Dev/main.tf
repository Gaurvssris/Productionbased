module "RG" {
source = "../../Infra/RG/RG"
    Rg = var.newRg
  
}
module "STRG" {
    depends_on = [ module.RG ]
    source = "../../Infra/Storage"
    strg = var.newStrg
  }