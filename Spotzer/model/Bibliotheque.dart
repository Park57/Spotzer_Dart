import 'dart:collection';

import 'Album.dart';
import 'Artiste.dart';
import 'Genre.dart';
import 'Morceau.dart';
import 'Playlist.dart';

class Bibliotheque {
	 static const int INCHANGE = 0;
	 static const int CREE = 1;
	 static const int MODIFIE = 2;
	 static const int SUPPRIMER = 3;

	 Set<Artiste> listeArtistes = new HashSet<Artiste>();
	 Set<Album> listeAlbums = new HashSet<Album>();
	 Set<Morceau> listeMorceaux = new HashSet<Morceau>();
	 Set<Genre> listeGenres = new HashSet<Genre>();
	 Set<Playlist> listPlaylists = new HashSet<Playlist>();


}