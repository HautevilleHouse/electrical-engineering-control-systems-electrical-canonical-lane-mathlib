import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean

structure OptimalControlPackage where
  costFunctional : Type
  riccatiEquation : Prop
  optimalControlLaw : Prop

def OptimalControlClosed (O : OptimalControlPackage) : Prop :=
  O.riccatiEquation ∧ O.optimalControlLaw

structure OptimalControlEvidence (O : OptimalControlPackage) where
  riccatiEquationClosed : O.riccatiEquation
  optimalControlLawClosed : O.optimalControlLaw

theorem optimal_control_closed_from_evidence (O : OptimalControlPackage)
    (E : OptimalControlEvidence O) : OptimalControlClosed O := by
  exact And.intro E.riccatiEquationClosed E.optimalControlLawClosed

end ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean
end HautevilleHouse