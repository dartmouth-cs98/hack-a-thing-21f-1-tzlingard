using Toybox.WatchUi as Ui;
using Toybox.System as Sys;

class RunIdeaGeneratorDelegate extends Ui.MenuInputDelegate {
    function initialize() {
        MenuInputDelegate.initialize();
    }

    function onMenuItem(item) {
        Ui.pushView(new RunIdeaGeneratorRunsView(item), null, WatchUi.SLIDE_BLINK);
   }
}
