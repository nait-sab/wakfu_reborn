import 'package:wakfu_reborn/src/domain/enums/element.dart';

abstract class Carte {
    /// ID de la carte
    int id;

    /// Élément de la carte
    Elements element;

    /// Coût de la carte
    int cout;

    /// Points d'expérience reçus en détruisant la carte
    int experienceDestruction;

    /// Niveau de la carte
    int niveau;

    /// Dommage de la carte
    int dommage;

    /// Résistance à l'air de la carte
    int resistanceAir;

    /// Résistance à la terre de la carte
    int resistanceTerre;

    /// Résistance au feu de la carte
    int resistanceFeu;

    /// Résistance à l'eau de la carte
    int resistanceEau;

    /// Résistance au Neutre de la carte
    int resistanceNeutre;

    /// Carte incliné ou dressé
    bool incline;

    /// Carte detruite
    bool detruite;

    Carte({
        required this.id,
        required this.element,
        required this.cout,
        required this.experienceDestruction,
        required this.niveau,
        required this.dommage,
        required this.resistanceAir,
        required this.resistanceTerre,
        required this.resistanceFeu,
        required this.resistanceEau,
        required this.resistanceNeutre,
        this.incline = false,
        this.detruite = false,
    });
}