/**
 * @license Copyright (c) 2003-2018, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
    // Define changes to default configuration here.
    // For complete reference see:
    // http://docs.ckeditor.com/#!/api/CKEDITOR.config

    // The toolbar groups arrangement, optimized for two toolbar rows.
    config.toolbarGroups = [
        { name: 'clipboard', groups: [ 'undo', 'clipboard' ] },
        { name: 'links', groups: [ 'links' ] },
        { name: 'insert', groups: [ 'insert' ] },
        { name: 'editing', groups: [ 'spellchecker', 'find', 'selection', 'editing' ] },
        { name: 'forms', groups: [ 'forms' ] },
        { name: 'others', groups: [ 'others' ] },
        { name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi', 'paragraph' ] },
        { name: 'document', groups: [ 'mode', 'doctools', 'document' ] },
        { name: 'tools', groups: [ 'tools' ] },
        { name: 'styles', groups: [ 'styles' ] },
        { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
        { name: 'colors', groups: [ 'colors' ] },
        { name: 'about', groups: [ 'about' ] },
        '/',
    ];

    // Remove some buttons provided by the standard plugins, which are
    // not needed in the Standard(s) toolbar.
    config.removeButtons = 'Underline,Subscript,Superscript,About,Anchor,PasteFromWord,PasteText,Unlink,Strike,Styles,Scayt';

    // Set the most common block elements.
    config.format_tags = 'p;h1;h2;h3;pre';
    config.extraPlugins = 'imageuploader';
    // Simplify the dialog windows.
    config.removeDialogTabs = 'image:advanced;link:advanced';
};
