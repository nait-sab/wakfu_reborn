import 'package:wakfu_reborn/src/domain/enums/element.dart';
import 'package:wakfu_reborn/src/domain/models/carte.dart';

class Heros extends Carte {
    /// Points d'action du héros (Nombre de carte possible dans la main)
    int pointsAction;

    /// Points de mouvement du héros (Nombre de carte possible dans le monde en attaque ou défense)
    int pointsMouvement;

    /// Points de vie du héros
    int pointsVie;

    /// Points de vie maxinum du héros
    int pointsVieMax;

    /// Expérience du héros
    int experience;

  Heros({
    required int id,
    required this.pointsAction,
    required this.pointsMouvement,
    required this.pointsVie,
    required this.pointsVieMax,
    required this.experience,
    required Elements element,
    required int cout,
    required int experienceDestruction,
    required int niveau,
    required int dommage,
    required int resistanceAir,
    required int resistanceTerre,
    required int resistanceFeu,
    required int resistanceEau,
    required int resistanceNeutre,
  }) : super(
          id: id,
          element: element,
          cout: cout,
          experienceDestruction: experienceDestruction,
          niveau: niveau,
          dommage: dommage,
          resistanceAir: resistanceAir,
          resistanceTerre: resistanceTerre,
          resistanceFeu: resistanceFeu,
          resistanceEau: resistanceEau,
          resistanceNeutre: resistanceNeutre,
        );

    void ajouterExperience(int experience) {
        this.experience += experience;

        if (this.experience >= 6 && niveau ==1) {
            this.experience -= 6;
            niveau = 2;
        }

        if (this.experience >= 18 && niveau == 2) {
            this.experience -= 18;
            niveau = 3;
        }
    }

    void soigner(int pointsVie) {
        this.pointsVie += pointsVie;
        if (this.pointsVie > pointsVieMax) {
            this.pointsVie = pointsVieMax;
        }
    }
}
