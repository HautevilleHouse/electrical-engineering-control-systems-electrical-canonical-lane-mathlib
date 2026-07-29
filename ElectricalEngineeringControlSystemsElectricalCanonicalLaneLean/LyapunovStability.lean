import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean

structure LyapunovStabilityPackage (S : StateSpaceRepresentationPackage) where
  equilibriumPoint : Vector ℝ S.stateDim
  lyapunovFunction : (Vector ℝ S.stateDim) → ℝ
  positiveDefinite : Prop
  derivativeNegativeDefinite : Prop
  asymptoticStability : Prop

structure LyapunovStabilityEvidence {S : StateSpaceRepresentationPackage} (L : LyapunovStabilityPackage S) where
  positiveDefiniteClosed : L.positiveDefinite
  derivativeNegativeDefiniteClosed : L.derivativeNegativeDefinite
  asymptoticStabilityClosed : L.asymptoticStability

def LyapunovStabilityClosed {S : StateSpaceRepresentationPackage} (L : LyapunovStabilityPackage S) : Prop :=
  L.positiveDefinite ∧ L.derivativeNegativeDefinite ∧ L.asymptoticStability

theorem lyapunov_stability_closed_from_evidence
    {S : StateSpaceRepresentationPackage} (L : LyapunovStabilityPackage S)
    (E : LyapunovStabilityEvidence L) : LyapunovStabilityClosed L := by
  exact And.intro E.positiveDefiniteClosed (And.intro E.derivativeNegativeDefiniteClosed E.asymptoticStabilityClosed)

end ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean
end HautevilleHouse