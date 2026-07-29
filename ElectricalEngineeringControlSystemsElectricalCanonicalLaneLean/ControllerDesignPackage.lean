import ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean.StabilityPackage

namespace HautevilleHouse
namespace ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean

structure ControllerDesignPackage {S : StateSpacePackage} {T : TransferFunctionPackage} (U : StabilityPackage T) where
  gainMatrix : Matrix (Fin S.inputDim) (Fin S.stateDim) ℝ
  closedLoopStable : Prop
  polePlacementAchieved : Prop
  closedLoopClosed : Prop
  polePlacementClosed : Prop

structure ControllerDesignEvidence {S : StateSpacePackage} {T : TransferFunctionPackage} {U : StabilityPackage T} (V : ControllerDesignPackage U) where
  closedLoopStableClosed : V.closedLoopStable
  polePlacementAchievedClosed : V.polePlacementAchieved
  closedLoopClosedFromEvidence : V.closedLoopClosed
  polePlacementClosedFromEvidence : V.polePlacementClosed

def ControllerDesignClosed {S : StateSpacePackage} {T : TransferFunctionPackage} {U : StabilityPackage T} (V : ControllerDesignPackage U) : Prop :=
  V.closedLoopStable ∧ V.polePlacementAchieved ∧ V.closedLoopClosed ∧ V.polePlacementClosed

theorem controller_design_closed_from_evidence {S : StateSpacePackage} {T : TransferFunctionPackage} {U : StabilityPackage T} (V : ControllerDesignPackage U) (E : ControllerDesignEvidence V) : ControllerDesignClosed V := by
  exact And.intro E.closedLoopStableClosed (And.intro E.polePlacementAchievedClosed (And.intro E.closedLoopClosedFromEvidence E.polePlacementClosedFromEvidence))

end ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean
end HautevilleHouse