using Toybox.Graphics as Graphics;
using Toybox.WatchUi as Ui;
using Toybox.System as Sys;
using Toybox.Math as Math;

class RunIdeaGeneratorRunsView extends Ui.View {

    const RAND_MAX = 21474.83647;
    var _runLength;
    var shortRuns = ["Water Treatment - 3", "Cemetery - 5", "OAB Etna", "Montshire - 7", "Rip Road - 4", "Foodstop - 2.5", "Occom Loop - 2.5", "Pumpkin Patch - 6", "Mink Brook - 2.5", "Power Sap - 6", "Unprotected Six", "Pine Park - 5", "Golf Course Loops - 5", "Michigan Loop - 1", "Safe Six", "8-Ball - 5"];
    var mainRuns = ["Toy Maker - 7.5", "Spank - 8", "Etna - 8", "Montshire to the Dam - 9", "Late Night Snack - 10", "Old Folks Home - 7.5", "Etna-Partridge - 9", "Boogie - 10", "Wolf Balls - 8.5", "Wolverine - 7.5", "Roller Coaster - 7.5", "Stay High - 7", "Stay Shai - 8", "Boston Lot - 8", "Moon Boots - 7.5"];
    var MLRs = ["Reservoir - 11", "Double Spank - 10.5", "Sound of Silence - 12.5", "Parcel 5 - 12.5", "OAB River Road", "Gun Shop - 10.5", "Big Country - 10.5", "Short Deliverance - 12", "Compromise - 10", "Pinneo - 12.5",  "Driver's Ed - 10", "Short Sound of Music - 11"];
    var longRuns = ["Sound of Music Roads - 13", "Long Sound of Music - 14", "Long Deliverance - 14", "Rail Trail", "Jericho - 15.5", "Long Pinneo - 14", "Gile Mountain - 19"];
    
    function initialize(runLength) {
        View.initialize();
        _runLength = runLength;
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    /*function onShow() as Void {
    }*/

    function onSwipe(swipeEvent) {
        Ui.popView(Ui.SLIDE_BLINK);
    }
    
    // Update the view
    function onUpdate(dc as Dc) as Void {
        // Call the parent onUpdate function to redraw the layout
        var view = View.findDrawableById("RunsDisplay");
        if (_runLength == :item_1) {
            var rand = Math.rand()/100000;
            var len = Math.round((rand/(RAND_MAX))*(shortRuns.size()-1));
            var run = shortRuns[len.toNumber()];
            view.setText(run);
        } else if (_runLength == :item_2) {
            var rand = Math.rand()/100000;
            var len = Math.round((rand/(RAND_MAX))*(mainRuns.size()-1));
            var run = mainRuns[len.toNumber()];
            view.setText(run);
        } else if (_runLength == :item_3) {
            var rand = Math.rand()/100000;
            var len = Math.round((rand/(RAND_MAX))*(MLRs.size()-1));
            var run = MLRs[len.toNumber()];
            view.setText(run);
        } else {
            var rand = Math.rand()/100000;
            var len = Math.round((rand/(RAND_MAX))*(longRuns.size()-1));
            var run = longRuns[len.toNumber()];
            view.setText(run);
        }
        View.onUpdate(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }
}
