import 'dart:collection';

import 'Morceau.dart';

class Genre {
  ////////////////
  //// FIELDS ////
  ////////////////

  int codeGenre;
  String libelleGenre;
  Set<Morceau> morceauxGenre = new HashSet<Morceau>();
  static List<String> genres;

  //////////////////////
  //// CONSTRUCTORS ////
  //////////////////////

  Genre(String libelleGenre) {
    this.codeGenre = -1;
    this.libelleGenre = libelleGenre;
  }

  /////////////////
  //// GETTERS ////
  /////////////////

  int get getCodeGenre => codeGenre;
  String get getLibelleGenre => libelleGenre;
  Set<Morceau> get getMorceauxGenre => morceauxGenre;
  static List get getGenres => genres;

  //////////////////
  //// SETTERS ////
  ////////////////

  set setCodeGenre(int code) => this.codeGenre = code;
  set setLibelleGenre(String libelle) => this.libelleGenre = libelle;
  set setMorceauxGenre(Set<Morceau> morceau) => this.morceauxGenre = morceau;
  static set setGenres(List<String> genres) => Genre.genres = genres;

  ////////////////////////////////
  /// AJOUTER RETIRER PRESENCE ///
  ////////////////////////////////

  void ajoutMorceauGenre(Morceau m) {
    morceauxGenre.add(m);
  }

  void retirerMorceauGenre(Morceau m) {
    morceauxGenre.remove(m);
  }

  bool presenceMorceauGenre(Morceau m) {
    return morceauxGenre.contains(m);
  }

  ///////////////////////
  // EQUALS & TOSTRING //
  ///////////////////////

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Genre &&
        o.codeGenre == codeGenre &&
        o.libelleGenre == libelleGenre;
  }

  @override
  int get hashCode => codeGenre.hashCode ^ libelleGenre.hashCode;

  @override
  String toString() =>
      'Genre(codeGenre: $codeGenre, libelleGenre: $libelleGenre)';
}
