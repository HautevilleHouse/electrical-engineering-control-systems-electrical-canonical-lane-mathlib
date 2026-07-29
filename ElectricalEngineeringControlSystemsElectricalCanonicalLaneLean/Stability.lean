import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean

structure StabilityPackage where
  lyapunovFunction : Type
  equilibriumPoint : Prop
  positiveDefinite : Prop
  derivativeNegative : Prop
  asymptoticStability : Prop

structure StabilityEvidence (S : StabilityPackage) where
  equilibriumPointClosed : S.equilibriumPoint
  positiveDefiniteClosed : S.positiveDefinite
  derivativeNegativeClosed : S.derivativeNegative
  asymptoticStabilityClosed : S.asymptoticStability

def StabilityClosed (S : StabilityPackage) : Prop :=
  S.equilibriumPoint ∧ S.positiveDefinite ∧ S.derivativeNegative ∧ S.asymptoticStability

theorem stability_closed_from_evidence (S : StabilityPackage) (E : StabilityEvidence S) : StabilityClosed S :=
  And.intro E.equilibriumPointClosed (And.intro E.positiveDefiniteClosed (And.intro E.derivativeNegativeClosed E.asymptoticStabilityClosed))

end ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean
end HautevilleHouse
