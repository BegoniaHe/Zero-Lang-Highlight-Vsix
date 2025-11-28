import * as vscode from 'vscode';

/**
 * Extension activation entry point.
 * Called when VS Code activates the extension.
 *
 * @param context - The extension context provided by VS Code.
 */
export function activate(context: vscode.ExtensionContext): void {
    // Log activation message to output channel
    const outputChannel = vscode.window.createOutputChannel('Zero Language');
    outputChannel.appendLine('Zero Language Highlight extension is now active!');
    outputChannel.appendLine(`Extension path: ${context.extensionPath}`);

    // Register output channel for disposal
    context.subscriptions.push(outputChannel);

    // Register a command to show extension info
    const showInfoCommand = vscode.commands.registerCommand(
        'zero-lang-highlight.showInfo',
        () => {
            vscode.window.showInformationMessage(
                'Zero Language Highlight: Syntax highlighting for .zero files is active.'
            );
        }
    );
    context.subscriptions.push(showInfoCommand);
}

/**
 * Extension deactivation entry point.
 * Called when VS Code deactivates the extension.
 */
export function deactivate(): void {
    // Cleanup is handled automatically by VS Code through context.subscriptions
}
