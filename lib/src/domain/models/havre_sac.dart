import 'package:wakfu_reborn/src/domain/enums/element.dart';
import 'package:wakfu_reborn/src/domain/models/carte.dart';

/// __Classe Havre Sac__
///
/// Sac pour protéger une autre carte
class HavreSac extends Carte {
    /// Taille du sac (Nombre de carte possible à côté du sac)
    int taille;

  /// Carte caché dans le sac
  Carte? carteCacher;

  HavreSac({
    required int id,
    required this.taille,
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
    this.carteCacher,
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
}
