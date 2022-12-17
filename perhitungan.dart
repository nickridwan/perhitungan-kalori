class Calculate {
  getCalori(
    String gender,
    String tinggi,
    String berat,
    String usia,
    String aktif,
  ) {
    var genderValue = gender;
    double height = double.parse(tinggi);
    double weight = double.parse(berat);
    double age = double.parse(usia);
    double personValue;
    if (genderValue == "Pria") {
      personValue = (88.4 + 13.4 * weight) + (height * 4.8) - (age * 5.68);
    } else {
      personValue = (447.6 + 9.25 * weight) + (height * 3.10) - (age * 3.10);
    }
    // mengetahui aktifitas user
    var aktifitas = aktif;
    double result;
    if (aktifitas == "tidak aktif") {
      result = 1.2 * personValue;
    } else if (aktifitas == "jarang") {
      result = 1.375 * personValue;
    } else if (aktifitas == "cukup aktif") {
      result = 1.55 * personValue;
    } else if (aktifitas == "aktif") {
      result = 1.725 * personValue;
    } else {
      result = 1.9 * personValue;
    }
    // jumlah hasil perhitungan dari gender
    // convert menjadi String
    String kalori = result.toString().substring(0, 4);
    // hasil akhir dari penjumlahan
    return kalori;
  }

  getWater(String weight) {
    String waterResult;
    double _weight = double.parse(weight);
    double waterValue = _weight * 30;
    waterResult = waterValue.toString().substring(0, 4);
    return waterResult;
  }

  getBmi(String weigth, String heigth) {
    double BmiResult;
    double _weigth = double.parse(weigth);
    double _height = double.parse(heigth);
    double _Cheight = _height / 100;
    BmiResult = _weigth / (_Cheight * _Cheight);

    return BmiResult;
  }

  getBodyFat(String dleher, String dpinggang, String heigth, String gender) {
    double _dleher = double.parse(dleher);
    double _dpinggang = double.parse(dpinggang);
    double _heigth = double.parse(heigth);

    double bodyMass;
    if (gender == "Pria") {
      bodyMass = 64 - (20 * (_heigth / _dpinggang));
    } else {
      bodyMass = 76 - (20 * (_heigth / _dpinggang));
    }
    return bodyMass;
  }
}
