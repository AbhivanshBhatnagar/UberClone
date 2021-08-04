import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:uberclone/configmap.dart';
import 'getresponse.dart';
import 'package:geolocator/geolocator.dart';
class Methods{
  static Future<String> searchAddfromCoor(Position position) async{
    String Add="";
    String url="https://apis.mapmyindia.com/advancedmaps/v1/$key/rev_geocode?lat=${position.latitude}&lng=${position.longitude}&region=IND&lang=en";

    var response=await GetResponse.getRequest(url);
    if(response!="Failed."){
      Add=response ["results"][0]["formatted_address"];
    }
    return Add;
  }
}