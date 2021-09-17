using Toybox.Graphics as Graphics;
using Toybox.WatchUi as Ui;
using Toybox.System as Sys;

class RunIdeaGeneratorView extends Ui.View {

    function initialize() {
        View.initialize();
    }

    // Load your resources here
    /*function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.MainLayout(dc));
    }*/

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    /*function onShow() as Void {
    }*/

    // Update the view
    function onUpdate(dc) as Void {
        // Call the parent onUpdate function to redraw the layout
        System.println("Hello world");
        openMainMenu();
        View.onUpdate(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

    function openMainMenu() {
        Ui.pushView(new Rez.Menus.MainMenu(), new RunIdeaGeneratorDelegate(), WatchUi.SLIDE_BLINK);
    }
}
