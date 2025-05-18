subnets = {
  "s-1" = {
    name = "sub-1"
    zone = "ru-central1-a"
    v4_cidr_blocks = ["192.168.20.0/24"]
  }
}

# Переопределяем переменную для описания машин, которые будут созданы. Эта же переменная есть в variables.tf. Все названия переменных внутри virtual_machines - произвольные и нужны для динамического создания машин
virtual_machines = {
    "vm-1" = {
      vm_name       = "machine-1" # Имя ВМ
      vm_desc       = "Описание для нас. Его видно только здесь" # Описание
      vm_cpu        = 2 # Кол-во ядер процессора
      ram           = 2 # Оперативная память в ГБ
      disk          = 10 # Объем диска в ГБ
      disk_name     = "machine-1-disk" # Название диска
      template      = "fd85bll745cg76f707mq" # ID образа ОС для использования
      public_ip     = true
      managed       = true
      zone          = "ru-central1-a"
      disk_type     = "network-hdd"
      core_fraction = 20
      platform_id   = "standard-v3"
      subnet        = "s-1"
    },
    "vm-2" = {
      vm_name      = "machine-2" # Имя ВМ
      vm_desc      = "Описание для инженеров. Его видно только здесь"
      vm_cpu       = 2 # Кол-во ядер процессора
      ram          = 2 # Оперативная память в ГБ
      disk         = 10 # Объем диска в ГБ
      disk_name    = "machine-2-disk" # Название диска
      template     = "fd85bll745cg76f707mq" # ID образа ОС для использования
      public_ip    = true
      managed      = true
      zone         = "ru-central1-b"
      disk_type    = "network-hdd"
      core_fraction = 20
      platform_id   = "standard-v3"
      subnet        = "s-1"
    },
    "vm-3" = {
      vm_name      = "machine-3" # Имя ВМ
      vm_desc      = "Описание для инженеров. Его видно только здесь"
      vm_cpu       = 2 # Кол-во ядер процессора
      ram          = 2 # Оперативная память в ГБ
      disk         = 20 # Объем диска в ГБ
      disk_name    = "machine-3-disk" # Название диска
      template     = "fd85bll745cg76f707mq" # ID образа ОС для использования
      public_ip    = false
      managed      = true
      zone         = "ru-central1-a"
      disk_type    = "network-hdd"
      core_fraction = 20
      platform_id   = "standard-v3"
      subnet        = "s-1"
    }
}