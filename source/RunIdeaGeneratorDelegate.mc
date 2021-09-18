using Toybox.WatchUi as Ui;
using Toybox.System as Sys;

class RunIdeaGeneratorDelegate extends Ui.MenuInputDelegate {
    function initialize() {
        MenuInputDelegate.initialize();
    }

    function onMenuItem(item) {
        if (item != :exit) {
            Ui.pushView(new RunIdeaGeneratorRunsView(item), new RunIdeaGeneratorRunsDelegate(), Ui.SLIDE_BLINK);
        }
        else {
            Ui.popView(SLIDE_IMMEDIATE);
        }
   }
}
