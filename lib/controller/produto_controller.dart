import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled/utilitarios/VariaveisGlobais.dart';
import '../dtos/produto_dto.dart';

class ProdutoController {

  Future<List<ProdutoDto>> buscarProdutoList() async {
    final response = await http.get(Uri.parse('${VariaveisGlobais.endPoint}/produto/lista'));
    List<dynamic> jsonResponse = json.decode(response.body);
    List<ProdutoDto> list = jsonResponse.map((item) => ProdutoDto.fromJson(item)).toList();
    return list;
  }

  Future<void> novoProduto() async {

  }

  Future<void> alterarProduto() async {

  }

}