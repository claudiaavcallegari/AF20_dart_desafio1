
void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];
  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  //! 3 - Apresente a quantidade de pacientes que moram em SP

  var mais20 = [];
  var moraSP = [];
  var profissoes = [];
  var profissionais = [];

  for (var paciente in pacientes) {
    var linha = paciente.split('|');
    var nome = linha[0];
    var idade = int.parse(linha[1]);
    var profissao = linha[2].toLowerCase();
    var uf = linha[3];

    if (idade > 20) {
      mais20.add(nome);
    }
    if (uf == 'SP') {
      moraSP.add(nome);
    }

    if (!profissoes.contains(profissao)) {
      profissoes.add(profissao);
      profissionais.add([]);

    }
    var indice = profissoes.indexOf(profissao);
    profissionais[indice].add(nome);
    
  }

  print('1- Pacientes com mais de 20 anos:  ${mais20.length} :');
  for (var item in mais20) {
     print('----->> $item');    
    
  }

  print('\n 2- Pacientes por profissão');
  for(var i=0 ; i<profissoes.length ; i++){
     print('    ${profissoes[i]}: (${profissionais[i].length }) ');
     for (var nome in profissionais[i]) {
       print('----->> $nome');       
     }
  }

  print('\n3- Pacientes que moram em SP: ( ${moraSP.length} )');
     for (var nome in moraSP) {
       print('----->> $nome');       
     }


}
