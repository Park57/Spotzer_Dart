import 'dart:collection';

import 'Bibliotheque.dart';
import 'Morceau.dart';

class Artiste {
  ////////////////
  //// FIELDS ////
  ////////////////

  int codeArtiste;
  String nomArtiste;
  Set<Morceau> morceauxArtiste = new HashSet<Morceau>();
  //@Transient
  int etatMetier;

  //////////////////////
  //// CONSTRUCTORS ////
  //////////////////////

  Artiste(String nomArtiste) {
    this.codeArtiste = -1;
    this.nomArtiste = nomArtiste;
    etatMetier = Bibliotheque.CREE;
  }

  Artiste.vide() {
    this.codeArtiste = -1;
    etatMetier = Bibliotheque.CREE;
  }

  /////////////////
  //// GETTERS ////
  /////////////////

  int get getCodeArtiste => codeArtiste;
  String get getNomArtiste => nomArtiste;
  Set<Morceau> get getMorceauxArtiste => morceauxArtiste;
  int get getEtatMetier => etatMetier;

  //////////////////
  //// SETTERS ////
  ////////////////

  set setCodeArtiste(int code) => this.codeArtiste = code;

  void setNomArtiste(String nom) {
    this.nomArtiste = nom;
    this.etatMetier = Bibliotheque.MODIFIE;
  }

  void setMorceauxArtiste(Set<Morceau> morceauxArtiste) {
    this.morceauxArtiste = morceauxArtiste;
    this.etatMetier = Bibliotheque.MODIFIE;
  }

  set setEtatMetier( int etatMetier) => this.etatMetier = etatMetier;

  ////////////////////////////////
  /// AJOUTER RETIRER PRESENCE ///
  ////////////////////////////////

  void ajoutMorceauArtiste(Morceau m) {
    morceauxArtiste.add(m);
  }

  void retirerMorceauArtiste(Morceau m) {
    morceauxArtiste.remove(m);
  }

  bool presenceMorceauArtiste(Morceau m) {
    return morceauxArtiste.contains(m);
  }

  ///////////////////////
  // EQUALS & TOSTRING //
  ///////////////////////

  @override
  String toString() =>
      'Artiste(codeArtiste: $codeArtiste, nomArtiste: $nomArtiste, etatMetier: $etatMetier)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Artiste &&
        o.codeArtiste == codeArtiste &&
        o.nomArtiste == nomArtiste &&
        o.etatMetier == etatMetier;
  }

  @override
  int get hashCode =>
      codeArtiste.hashCode ^ nomArtiste.hashCode ^ etatMetier.hashCode;
}
