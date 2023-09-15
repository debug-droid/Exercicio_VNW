programa {

  inclua biblioteca Matematica --> mat

  funcao inicio() {
    real valorReal, valorConvertido
    inteiro opcao

    escreva("Digite o valor em Real(R$) a ser convertido: ")
    leia(valorReal)

    escreva("Escolha a moeda para convers�o:\n")
    escreva("1. Kwanzas\n")
    escreva("2. Euros (EUR)\n")
    escreva("3. Libras Esterlinas (GBP)\n")
    leia(opcao)

    se (opcao == 1) {
      valorConvertido = valorReal / 0.0059  // Taxa de c�mbio para Kwanzas
      mat.arredondar(valorConvertido, 2)
    } senao se (opcao == 2) {
      valorConvertido = valorReal / 5.19  // Taxa de c�mbio para Euros
      mat.arredondar(valorConvertido, 2)
    } senao se (opcao == 3) {
      valorConvertido = valorReal / 6.03  // Taxa de c�mbio para Libras
      mat.arredondar(valorConvertido, 2)
    } senao {
      escreva("Op��o inv�lida. Por favor, escolha 1, 2 ou 3.")
    }

    valorConvertido = mat.arredondar(valorConvertido, 2)

    escreva("Valor convertido �: " + valorConvertido + " ")

    se (opcao == 1) {
      escreva("Kwanzas Angolanos Kz.")
    } senao se (opcao == 2) {
      escreva("Euros (EUR).")
    } senao se (opcao == 3) {
      escreva("Libras Esterlinas (GBP).")
    }
  }
}
