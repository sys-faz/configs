"use strict";

import Gtk from "gi://Gtk";
import GObject from "gi://GObject";
import GLib from "gi://GLib";

export default class PrefsBoxOrderListEmptyPlaceholder extends Gtk.Box {
    static {
        GObject.registerClass({
            GTypeName: "PrefsBoxOrderListEmptyPlaceholder",
            Template: GLib.uri_resolve_relative(import.meta.url, "../ui/prefs-box-order-list-empty-placeholder.ui", GLib.UriFlags.NONE),
        }, this);
    }

    // Handle a new drop on `this` properly.
    // `value` is the thing getting dropped.
    onDrop(_target, value, _x, _y) {
        // Get the GtkListBoxes of `this` and the drop value.
        const ownListBox = this.get_parent();
        const valueListBox = value.get_parent();

        // Remove the drop value from its list box.
        valueListBox.removeRow(value);

        // Insert the drop value into the list box of `this`.
        ownListBox.insertRow(value, 0);

        /// Finally save the box orders to settings and make sure move actions
        /// are correctly enabled/disabled.
        ownListBox.saveBoxOrderToSettings();
        ownListBox.determineRowMoveActionEnable();
        valueListBox.saveBoxOrderToSettings();
        valueListBox.determineRowMoveActionEnable();
    }
}
