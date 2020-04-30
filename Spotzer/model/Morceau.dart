import 'dart:collection';

import 'Album.dart';
import 'Artiste.dart';
import 'Bibliotheque.dart';
import 'Genre.dart';
import 'Playlist.dart';

class Morceau {
  int codeMorceau;
  String titreMorceau;
  Album albumMorceau;
  Artiste artisteMorceau;
  Set<Genre> genresMorceau = new HashSet<Genre>();
  Set<Playlist> playlistsMorceau = new HashSet<Playlist>();
  String cheminMorceau;
  int anneeMorceau;
  String parolesMorceau;
  String auteurCompositeurMorceau;
  String commentaireMorceau;
  //@Transient
  int etatMetier;

  Morceau(int annee) {
    this.anneeMorceau = annee;
    this.codeMorceau = -1;
    etatMetier = Bibliotheque.CREE;
  }

  /////////////////
  //// GETTERS ////
  /////////////////

  int get getCodeMorceau => codeMorceau;

  String get getTitreMorceau => titreMorceau;

  Album get getAlbumMorceau => albumMorceau;

  Artiste get getArtisteMorceau => artisteMorceau;

  Set<Genre> get getGenres => genresMorceau;

  Set<Playlist> get getPlaylists => playlistsMorceau;

  String get getCheminMorceau => cheminMorceau;

  int get getAnneeMorceau => anneeMorceau;

  String get getParolesMorceau => parolesMorceau;

  String get getAuteurCompositeurMorceau => auteurCompositeurMorceau;

  String get getCommentaireMorceau => commentaireMorceau;

  int get getEtatMetier => etatMetier;


  //////////////////
  //// SETTERS ////
  ////////////////

  set setCodeMorceau(int codeMorceau) => this.codeMorceau = codeMorceau;
  void setTitreMorceau(String titreMorceau) {this.titreMorceau = titreMorceau;this.etatMetier = Bibliotheque.MODIFIE;}
  void setAlbumMorceau(Album albumMorceau) {this.albumMorceau = albumMorceau;this.etatMetier = Bibliotheque.MODIFIE;}
  void setArtisteMorceau(Artiste artisteMorceau) {this.artisteMorceau = artisteMorceau;this.etatMetier = Bibliotheque.MODIFIE;}
  void setGenresMorceau(Set<Genre> genresMorceau) {this.genresMorceau = genresMorceau;this.etatMetier = Bibliotheque.MODIFIE;}
  set setCheminMorceau(String cheminMorceau) =>this.cheminMorceau = cheminMorceau;
  set setAnneeMorceau(int anneeMorceau) => this.anneeMorceau = anneeMorceau;
  set setParolesMorceau(String parolesMorceau) => this.parolesMorceau = parolesMorceau;
  set setAuteurCompositeurMorceau(String auteurCompositeurMorceau) => this.auteurCompositeurMorceau = auteurCompositeurMorceau;
  void setCommentaireMorceau(String commentaireMorceau) {this.commentaireMorceau = commentaireMorceau;this.etatMetier = Bibliotheque.MODIFIE;}
  set setEtatMetier(int etatMetier) => this.etatMetier = etatMetier;

  ////////////////////////////////
  /// AJOUTER RETIRER PRESENCE ///
  ////////////////////////////////

  void ajoutPlaylistMorceau(Playlist p) {
    this.playlistsMorceau.add(p);
    this.setEtatMetier = Bibliotheque.MODIFIE;
  }

  bool presencePlaylistMorceau(Playlist p) {
    return this.genresMorceau.contains(p);
  }

  void retirerPlaylistMorceau(Playlist p) {
    // TODO A COMPLETER
    this.playlistsMorceau.remove(p);
    this.setEtatMetier = Bibliotheque.MODIFIE;

  }

  void ajoutGenreMorceau(Genre g) {
    this.genresMorceau.add(g);
  }

  bool presenceGenreMorceau(Genre g) {
    return this.genresMorceau.contains(g);
  }

  void retirerGenreMorceau(Genre g) {
    this.genresMorceau.remove(g);
  }

  ///////////////////////
  // EQUALS & TOSTRING //
  ///////////////////////

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Morceau &&
        o.codeMorceau == codeMorceau &&
        o.titreMorceau == titreMorceau &&
        o.albumMorceau == albumMorceau &&
        o.artisteMorceau == artisteMorceau &&
        o.cheminMorceau == cheminMorceau &&
        o.anneeMorceau == anneeMorceau &&
        o.parolesMorceau == parolesMorceau &&
        o.auteurCompositeurMorceau == auteurCompositeurMorceau &&
        o.commentaireMorceau == commentaireMorceau &&
        o.etatMetier == etatMetier;
  }

  @override
  int get hashCode {
    return codeMorceau.hashCode ^
        titreMorceau.hashCode ^
        albumMorceau.hashCode ^
        artisteMorceau.hashCode ^
        cheminMorceau.hashCode ^
        anneeMorceau.hashCode ^
        parolesMorceau.hashCode ^
        auteurCompositeurMorceau.hashCode ^
        commentaireMorceau.hashCode ^
        etatMetier.hashCode;
  }

  @override
  String toString() {
    String res = "";
    res +=
        "\nMorceau \n[\ncodeMorceau= $codeMorceau,\n titreMorceau= $titreMorceau";
    res += ",\n artisteMorceau=";
    if (this.artisteMorceau != null)
      res += ",\n artisteMorceau=" + artisteMorceau.getNomArtiste + ",\n";
    else
      res += "\nCe morceau n'a pas d'artiste,\n";
    if (this.albumMorceau != null)
      res += " albumMorceau=" + this.albumMorceau.getTitreAlbum;
    else
      res += "Ce morceau n'a pas d'album";
    res += ",\n genresMorceau= $genresMorceau,\n cheminMorceau=" +
        cheminMorceau +
        ",\n anneeMorceau=" +
        anneeMorceau +
        ",\n parolesMorceau=" +
        parolesMorceau +
        ",\n auteurCompositeurMorceau=" +
        auteurCompositeurMorceau +
        ",\n commentaireMorceau=" +
        commentaireMorceau +
        "\n]";
    return res;
  }
}
