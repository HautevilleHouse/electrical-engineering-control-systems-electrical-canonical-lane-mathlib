import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean

structure ControllerDesignPackage where
  stateFeedbackGain : Type
  closedLoopMatrix : Type
  polePlacement : Prop
  optimalControl : Prop
  robustStability : Prop

structure ControllerDesignEvidence (C : ControllerDesignPackage) where
  polePlacementClosed : C.polePlacement
  optimalControlClosed : C.optimalControl
  robustStabilityClosed : C.robustStability

def ControllerDesignClosed (C : ControllerDesignPackage) : Prop :=
  C.polePlacement ∧ C.optimalControl ∧ C.robustStability

theorem controller_design_closed_from_evidence (C : ControllerDesignPackage) (E : ControllerDesignEvidence C) : ControllerDesignClosed C :=
  And.intro E.polePlacementClosed (And.intro E.optimalControlClosed E.robustStabilityClosed)

end ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean
end HautevilleHouse
