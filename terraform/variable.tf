variable "region" {
  type    = string
}

variable "vpc_cidr" {
  type    = string
}

variable "subnet_cidrs" {
  type = list(string)
}

variable "app_name" {
  type = string
}

variable "container_port" {
  type = number
}

variable "pub_subnet_1" {
    type = string
}

variable "pub_subnet_2" {
    type = string
}

variable "env" {
    type = string
}

variable "domain" {
    type = string
}

variable "log_group_name" {
    type = string
  
}


variable "default_tags" {
  type = map(string)
  default = {
    Author                    = "Vignesh Chakravarthy"
    ABGLicense                = ""
    ApplicationName           = "BayerECS"
    ApplicationPattern        = ""
    ApplicationVersion        = ""
    Auto-scaleGroup           = ""
    Backup                    = ""
    BackupPolicy              = ""
    BusinessOwner             = ""
    Customer                  = ""
    DataHighestClassification = "Confidential"
    DataPCI                   = "Yes"
    DataPII                   = "Yes"
    Department                = "Data Transformation"
    Environment               = "Development"
    ProjectID                 = "PRJ0026689"
    ProjectManager            = ""
    ProjectName               = "PostProcessorECS"
    ResourceFunction          = "Data Processor"
    ResourceRequestID         = ""
    Retention                 = ""
    RotateImage               = ""
    ScannablePorts           = ""
    TechnicalOwner           = ""
    Template                  = ""
    TemplateURL              = ""
    Terraform                = true
  }
  description = "Default tags for AWS resources"
}

