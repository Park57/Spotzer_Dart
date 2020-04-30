import 'dart:collection';
import 'Bibliotheque.dart';
import 'Morceau.dart';

class Album {
  ////////////////
  //// FIELDS ////
  ////////////////

  int codeAlbum;
  String titreAlbum;
  Set<Morceau> morceauxAlbum = new HashSet<Morceau>();
  int anneeAlbum;
  //@Transient
  int etatMetier;

  //////////////////////
  //// CONSTRUCTORS ////
  //////////////////////

  Album(String titreAlbum, int anneeAlbum) {
    this.codeAlbum = -1;
    if (titreAlbum != null) this.titreAlbum = titreAlbum;
    if (anneeAlbum != -1) this.anneeAlbum = anneeAlbum;
    etatMetier = Bibliotheque.CREE;
  }

  Album.vide() {
    this.codeAlbum = -1;
    etatMetier = Bibliotheque.CREE;
  }

  /////////////////
  //// GETTERS ////
  /////////////////

  int get getCodeAbum => codeAlbum;
  String get getTitreAlbum => titreAlbum;
  Set<Morceau> get getMorceauxAlbum => morceauxAlbum;
  int get getAnneeAlbum => anneeAlbum;
  int get getEtatMetier => etatMetier;

  //////////////////
  //// SETTERS ////
  ////////////////

  set setCodeAlbum(int code) => this.codeAlbum = code;
  void setTitreAlbum(String titre) {this.titreAlbum = titre; this.etatMetier = Bibliotheque.MODIFIE;}
  void setMorceauxAlbum(Set<Morceau> morceauxAlbum) {this.morceauxAlbum = morceauxAlbum; this.etatMetier = Bibliotheque.MODIFIE;}
  void setAnneeAlbum(int annee) {this.anneeAlbum = annee; this.etatMetier = Bibliotheque.MODIFIE;}
  set setEtatMetier(int etatMetier) => this.etatMetier = etatMetier;

  ////////////////////////////////
  /// AJOUTER RETIRER PRESENCE ///
  ////////////////////////////////

  void ajoutMorceauAlbum(Morceau m) {
    morceauxAlbum.add(m);
  }

  void retirerMorceauAlbum(Morceau m) {
    morceauxAlbum.remove(m);
  }

  bool presenceMorceauAlbum(Morceau m) {
    return morceauxAlbum.contains(m);
  }

  ///////////////////////
  // EQUALS & TOSTRING //
  ///////////////////////

  @override
  String toString() {
    return 'Album(codeAlbum: $codeAlbum, titreAlbum: $titreAlbum, anneeAlbum: $anneeAlbum, etatMetier: $etatMetier)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Album &&
        o.codeAlbum == codeAlbum &&
        o.titreAlbum == titreAlbum &&
        o.anneeAlbum == anneeAlbum &&
        o.etatMetier == etatMetier;
  }

  @override
  int get hashCode {
    return codeAlbum.hashCode ^
        titreAlbum.hashCode ^
        anneeAlbum.hashCode ^
        etatMetier.hashCode;
  }
}
