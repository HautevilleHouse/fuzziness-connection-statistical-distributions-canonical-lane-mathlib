import canonicalLaneMathlib.AdmissibleClass
import FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean.SufficiencyAndExponentialFamilies

namespace HautevilleHouse
namespace FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean

structure NeymanPearsonPackage (S : SufficiencyPackage) where
  mostPowerfulTest : Prop
  likelihoodRatio : Prop
  thresholdDetermined : Prop
  hypothesisPair : Prop
  testSize : Prop
  testPower : Prop

structure NeymanPearsonEvidence {S : SufficiencyPackage} (N : NeymanPearsonPackage S) where
  mostPowerfulTestClosed : N.mostPowerfulTest
  likelihoodRatioClosed : N.likelihoodRatio
  thresholdDeterminedClosed : N.thresholdDetermined
  hypothesisPairClosed : N.hypothesisPair
  testSizeClosed : N.testSize
  testPowerClosed : N.testPower

def NeymanPearsonClosed {S : SufficiencyPackage} (N : NeymanPearsonPackage S) : Prop :=
  N.mostPowerfulTest ∧ N.likelihoodRatio ∧ N.thresholdDetermined ∧ N.hypothesisPair ∧ N.testSize ∧ N.testPower

theorem neyman_pearson_closed_from_evidence {S : SufficiencyPackage} (N : NeymanPearsonPackage S) (E : NeymanPearsonEvidence N) :
    NeymanPearsonClosed N := by
  exact And.intro E.mostPowerfulTestClosed
    (And.intro E.likelihoodRatioClosed
      (And.intro E.thresholdDeterminedClosed
        (And.intro E.hypothesisPairClosed
          (And.intro E.testSizeClosed E.testPowerClosed))))

end FuzzinessConnectionStatisticalDistributionsCanonicalLaneLean
end HautevilleHouse
