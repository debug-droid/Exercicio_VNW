// Construa um sistema de login e verifique se as credenciais estão corretas. Se as credenciais estiverem erradas em 3 tentativas, bloqueie o usuário.

programa {

  funcao inicio() {
    cadeia email = "diego@diego.com"
    cadeia senha = "123456"
    cadeia emailDigitado, senhaDigitada
    inteiro tentativas = 0

    enquanto (tentativas < 3) {
      escreva("Digite o seu e-mail: ")
      leia(emailDigitado)

      escreva("Digite a sua senha: ")
      leia(senhaDigitada)

      se (emailDigitado == email e senhaDigitada == senha) {
        escreva("Login bem-sucedido! Bem-vindo, ", email, "\n")
        pare // Sai do loop se as credenciais estiverem corretas
      } senao {
        escreva("Credenciais incorretas. Tente novamente.\n")
        tentativas += 1
      }
    }

    // Verifique se o usuário foi bloqueado após 3 tentativas incorretas
    se (tentativas == 3) {
      escreva("Você excedeu o limite de tentativas. Sua conta está bloqueada.\n")
    }
  }
}

