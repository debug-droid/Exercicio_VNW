programa {

  inclua biblioteca Matematica --> mat

  funcao inicio() {
    real valorReal, valorConvertido
    inteiro opcao

    escreva("Digite o valor em Real(R$) a ser convertido: ")
    leia(valorReal)

    escreva("Escolha a moeda para conversão:\n")
    escreva("1. Kwanzas\n")
    escreva("2. Euros (EUR)\n")
    escreva("3. Libras Esterlinas (GBP)\n")
    leia(opcao)

    se (opcao == 1) {
      valorConvertido = valorReal / 0.0059  // Taxa de câmbio para Kwanzas
      mat.arredondar(valorConvertido, 2)
    } senao se (opcao == 2) {
      valorConvertido = valorReal / 5.19  // Taxa de câmbio para Euros
      mat.arredondar(valorConvertido, 2)
    } senao se (opcao == 3) {
      valorConvertido = valorReal / 6.03  // Taxa de câmbio para Libras
      mat.arredondar(valorConvertido, 2)
    } senao {
      escreva("Opção inválida. Por favor, escolha 1, 2 ou 3.")
    }

    valorConvertido = mat.arredondar(valorConvertido, 2)

    escreva("Valor convertido é: " + valorConvertido + " ")

    se (opcao == 1) {
      escreva("Kwanzas Angolanos Kz.")
    } senao se (opcao == 2) {
      escreva("Euros (EUR).")
    } senao se (opcao == 3) {
      escreva("Libras Esterlinas (GBP).")
    }
  }
}
