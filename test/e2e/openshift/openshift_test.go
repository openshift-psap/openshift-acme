package extended

import (
	"testing"

	_ "github.com/openshift-psap/openshift-acme/test/e2e/openshift/routes"
	exutil "github.com/openshift-psap/openshift-acme/test/e2e/openshift/util"
)

func init() {
	exutil.InitTest()
}

func TestExtended(t *testing.T) {
	exutil.ExecuteTest(t, "Extended")
}
