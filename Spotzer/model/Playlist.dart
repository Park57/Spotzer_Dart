import 'dart:collection';
import 'Bibliotheque.dart';
import 'Morceau.dart';

class Playlist {
  ////////////////
  //// FIELDS ////
  ////////////////

  int codePlaylist;
  //  Utilisateur createurPlaylist;
  //  int tempsPlaylist;
  Set<Morceau> morceauxPlaylist = new HashSet<Morceau>();
  String titrePlaylist;
  String descriptionPlaylist;
  //@Transient
  int etatMetier;

  //////////////////////
  //// CONSTRUCTORS ////
  //////////////////////

  Playlist() {
    this.codePlaylist = -1;
    etatMetier = Bibliotheque.CREE;
  }

  /////////////////
  //// GETTERS ////
  /////////////////

  int get getCodePlaylist => codePlaylist;
  Set<Morceau> get getMorceauxPlaylist => morceauxPlaylist;
  String get getTitrePlaylist => titrePlaylist;
  String get getDescriptionPlaylist => descriptionPlaylist;
  int get getEtatMetier => etatMetier;

  //////////////////
  //// SETTERS ////
  ////////////////

  set setCodePlaylist(int code) => codePlaylist = code;
  void setTitrePlaylist(String titre){this.titrePlaylist = titre; this.etatMetier = Bibliotheque.MODIFIE;}
  void setDescriptionPlaylist(String description){this.descriptionPlaylist = descriptionPlaylist; this.etatMetier = Bibliotheque.MODIFIE;}
  void setMorceauxPlaylist(Set<Morceau> morceauPlaylist){this.morceauxPlaylist = morceauPlaylist; this.etatMetier = Bibliotheque.MODIFIE;}
  set setEtatMetier(int etatMetier) => this.etatMetier = etatMetier;


  ////////////////////////////////
  /// AJOUTER RETIRER PRESENCE ///
  ////////////////////////////////

  void ajoutMorceauPlaylist(Morceau m) {
    this.morceauxPlaylist.add(m);
    this.etatMetier = Bibliotheque.MODIFIE;
  }

  bool presenceMorceauPlaylist(Morceau m) {
    return this.morceauxPlaylist.contains(m);
  }

  void retirerMorceauPlaylist(Morceau m) {
    this.morceauxPlaylist.remove(m);
    this.etatMetier = Bibliotheque.MODIFIE;
  }

  ///////////////////////
  // EQUALS & TOSTRING //
  ///////////////////////

  @override
  String toString() {
    return 'Playlist(codePlaylist: $codePlaylist, titrePlaylist: $titrePlaylist, descriptionPlaylist: $descriptionPlaylist, etatMetier: $etatMetier)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Playlist &&
        o.codePlaylist == codePlaylist &&
        o.titrePlaylist == titrePlaylist &&
        o.descriptionPlaylist == descriptionPlaylist &&
        o.etatMetier == etatMetier;
  }

  @override
  int get hashCode {
    return codePlaylist.hashCode ^
        titrePlaylist.hashCode ^
        descriptionPlaylist.hashCode ^
        etatMetier.hashCode;
  }
}
