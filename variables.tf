variable "sua_variavel" {
  type        = string
  description = "Variavel criada para teste de validacao"

  validation {
    condition     = length(var.sua_variavel) > 4 && substr(var.sua_variavel, 0, 4) == "dev-"
    error_message = "ERRO: Sua variável deve iniciar com \"dev-\"."
  }
}
