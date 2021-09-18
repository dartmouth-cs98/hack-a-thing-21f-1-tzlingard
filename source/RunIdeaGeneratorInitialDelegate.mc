using Toybox.WatchUi as Ui;
using Toybox.System as Sys;

class RunIdeaGeneratorInitialDelegate extends Ui.BehaviorDelegate {
    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onTap(clickEvent) {
        System.println("Ok, going in");
        Ui.pushView(new Rez.Menus.MainMenu(), new RunIdeaGeneratorDelegate(), Ui.SLIDE_BLINK);
    }
}
