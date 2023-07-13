module "workload" {

    source = "./workload"
    details = var.details
  
}


module "workflow" {
    source = "./workflow"
    details2 = var.details2
  
}
