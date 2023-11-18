import 'dart:convert';
import 'dart:io';

import 'package:astrotalk_project/feature_homepage/model/astrolist_model.dart';
import 'package:astrotalk_project/feature_homepage/model/banner_model.dart';
import 'package:astrotalk_project/feature_homepage/repository/server/api_repository.dart';
import 'package:astrotalk_project/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiRepositoryImpl extends ApiRepository {
  @override
  Future<BannerModel> fetchbannerData(String endpoint) async {
    late BannerModel bannerModel;
    try {
      Response response = await http.post(Uri.parse("$BASE_URL$endpoint"));
      if (response.statusCode == 200) {
        var apiResponse = jsonDecode(response.body);

        debugPrint('server type - ${apiResponse.runtimeType.toString()}');
        bannerModel = BannerModel.fromJson(apiResponse);
      } else {
        throw HttpException(
            'Request failed with status: ${response.statusCode}');
      }
    } on SocketException catch (e) {
      throw SocketException('No Internet connection ${e.message}');
    } on HttpException catch (e) {
      throw HttpException('HTTP error: ${e.message}');
    } catch (e) {
      throw Exception('An error occurred: $e');
    }

    return bannerModel;
  }

  @override
  Future<AstroListModel> fetchAstroList(
      String endpoint, String bearerToken) async {
    Map<String, String> authHeaders = {
      'Authorization': 'Bearer $bearerToken',
      'Content-Type': 'application/json',
    };

    late AstroListModel astromodel;
    try {
      Response response = await http.post(
          headers: authHeaders, Uri.parse("$BASE_URL$endpoint"));
      if (response.statusCode == 200) {
        var apiResponse = jsonDecode(response.body);

        debugPrint('astro apiResponse - $apiResponse');
        astromodel = AstroListModel.fromJson(apiResponse);
      } else {
        throw HttpException(
            'Request failed with status: ${response.statusCode}');
      }
    } on SocketException catch (e) {
      throw SocketException('Error - ${e.message}');
    } on HttpException catch (e) {
      throw HttpException('HTTP error: ${e.message}');
    } catch (e) {
      throw Exception('An error occurred: $e');
    }

    return astromodel;
  }
}
