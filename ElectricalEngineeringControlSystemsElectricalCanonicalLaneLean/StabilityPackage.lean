import ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean.StateSpacePackage

namespace HautevilleHouse
namespace ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean

structure StabilityPackage {S : StateSpacePackage} (T : TransferFunctionPackage) where
  lyapunovFunction : S.stateDim → ℝ
  lyapunovStable : Prop
  lyapunovDerivativeNegative : Prop
  poleCondition : All poles of T have negative real part

structure StabilityEvidence {S : StateSpacePackage} {T : TransferFunctionPackage} (U : StabilityPackage T) where
  lyapunovStableClosed : U.lyapunovStable
  lyapunovDerivativeNegativeClosed : U.lyapunovDerivativeNegative
  poleConditionClosed : U.poleCondition

def StabilityClosed {S : StateSpacePackage} {T : TransferFunctionPackage} (U : StabilityPackage T) : Prop :=
  U.lyapunovStable ∧ U.lyapunovDerivativeNegative ∧ U.poleCondition

theorem stability_closed_from_evidence {S : StateSpacePackage} {T : TransferFunctionPackage} (U : StabilityPackage T) (E : StabilityEvidence U) : StabilityClosed U := by
  exact And.intro E.lyapunovStableClosed (And.intro E.lyapunovDerivativeNegativeClosed E.poleConditionClosed)

end ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean
end HautevilleHouse