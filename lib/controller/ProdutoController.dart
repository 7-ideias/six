import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled/utilitarios/VariaveisGlobais.dart';
import '../dtos/ProdutoDto.dart';

class ProdutoController {
  Future<List<ProdutoDto>> buscarProdutoList() async {
    final response = await http.get(Uri.parse('${VariaveisGlobais.endPoint}/lista/produtos'));
    List<dynamic> jsonResponse = json.decode(response.body);
    List<ProdutoDto> list = jsonResponse.map((item) => ProdutoDto.fromJson(item)).toList();
    return list;
  }
}