import canonicalLaneMathlib.AdmissibleClass
import ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean.StateSpacePackage

namespace HautevilleHouse
namespace ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean

structure ControllabilityPackage {P : StateSpacePackage} where
  controllabilityMatrixRank : Prop
  controllabilityGramian : Prop
  kalmanControllability : Prop

structure ControllabilityEvidence {P : StateSpacePackage} (C : ControllabilityPackage P) where
  controllabilityMatrixRankClosed : C.controllabilityMatrixRank
  controllabilityGramianClosed : C.controllabilityGramian
  kalmanControllabilityClosed : C.kalmanControllability

def ControllabilityClosed {P : StateSpacePackage} (C : ControllabilityPackage P) : Prop :=
  C.controllabilityMatrixRank ∧ C.controllabilityGramian ∧ C.kalmanControllability

theorem controllability_closed_from_evidence {P : StateSpacePackage} (C : ControllabilityPackage P) (E : ControllabilityEvidence C) : ControllabilityClosed C := by
  exact And.intro E.controllabilityMatrixRankClosed (And.intro E.controllabilityGramianClosed E.kalmanControllabilityClosed)

end ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean
end HautevilleHouse