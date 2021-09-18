using Toybox.WatchUi as Ui;
using Toybox.System as Sys;

class RunIdeaGeneratorRunsDelegate extends Ui.BehaviorDelegate {
    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onBack() {
        Ui.popView(Ui.SLIDE_BLINK);
    }
}
