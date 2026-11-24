import 'dart:io';
void main() {
  print('================================');
  print('       QUIZ SEGURANÇA DIGITAL');
  print('================================');
  print('Bem-vindo ao nosso quiz!');
  print('Teste seus conhecimentos sobre tecnologia.\n');
  stdout.write('Digite seu nome: ');
  String nome = stdin.readLineSync() ?? 'Jogador';
  int pontos = 0;
  List<Map<String, dynamic>> perguntas = [
    {
      'pergunta': 'O que é uma senha forte?',
      'alternativas': [
        'A) Uma senha com apenas números',
        'B) Uma senha curta',
        'C) Uma combinação de letras, números e símbolos',
        'D) O próprio nome'
      ],
      'correta': 'C'
    },
    {
      'pergunta': 'O que é phishing?',
      'alternativas': [
        'A) Uma tentativa de roubar informações por meio de golpes',
        'B) Um programa de edição',
        'C) Uma rede social',
        'D) Um tipo de computador'
      ],
      'correta': 'A'
    },
    {
      'pergunta': 'O que fazer ao receber um link suspeito?',
      'alternativas': [
        'A) Abrir imediatamente',
        'B) Compartilhar com amigos',
        'C) Informar sua senha',
        'D) Verificar a origem antes de clicar'
      ],
      'correta': 'D'
    },
    {
      'pergunta': 'Para que serve a autenticação em dois fatores?',
      'alternativas': [
        'A) Melhorar a internet',
        'B) Adicionar uma camada extra de segurança',
        'C) Apagar arquivos',
        'D) Compartilhar senhas'
      ],
      'correta': 'B'
    },
    {
      'pergunta': 'Qual é a função de um antivírus?',
      'alternativas': [
        'A) Aumentar a memória RAM',
        'B) Melhorar a tela',
        'C) Detectar programas maliciosos',
        'D) Criar senhas automaticamente'
      ],
      'correta': 'C'
    },
    {
      'pergunta': 'Por que devemos atualizar os programas?',
      'alternativas': [
        'A) Para corrigir falhas de segurança',
        'B) Para apagar todos os arquivos',
        'C) Para diminuir a proteção',
        'D) Para compartilhar informações'
      ],
      'correta': 'A'
    }
  ];
  for (int i = 0; i < perguntas.length; i++) {
    print('\nPergunta ${i + 1}:');
    print(perguntas[i]['pergunta']);
    for (String alternativa in perguntas[i]['alternativas']) {
      print(alternativa);
    }
    String resposta = '';
    while (!['A', 'B', 'C', 'D'].contains(resposta)) {
      stdout.write('\nDigite sua resposta: ');
      resposta = (stdin.readLineSync() ?? '')
          .trim()
          .toUpperCase();
      if (!['A', 'B', 'C', 'D'].contains(resposta)) {
        print('Resposta inválida! Digite A, B, C ou D.');
      }
    }
    if (resposta == perguntas[i]['correta']) {
      print('Parabéns, resposta correta!');
      pontos++;
    } else {
      print('Resposta incorreta!');
      print('A resposta correta era: ${perguntas[i]['correta']}');
    }
  }
  print('\n================================');
  print('           RESULTADO');
  print('================================');
  print('Jogador: $nome');
  print('Pontuação: $pontos de ${perguntas.length}');
  if (pontos == perguntas.length) {
    print('Excelente! Você acertou todas!');
  } else if (pontos >= 4) {
    print('Muito bem! Você conhece bastante sobre segurança digital!');
  } else if (pontos >= 2) {
    print('Bom esforço! Continue estudando!');
  } else {
    print('Você precisa estudar um pouco mais. Não desista!');
  }
  print('\nObrigado por participar, $nome!');
}
