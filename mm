Check if textual is installed by running: python3 -c "import textual; print(textual.__version__)"

If not installed run: pip install textual --break-system-packages

Then create /mnt/d/mrrobot/ui/app.py — a Python Textual TUI application with these specs:

Two tabs: Orchestrator and Health Map.

Orchestrator tab uses three-column grid layout:
Left column: agent roster showing emoji plus name plus org plus status dot colored green active amber busy gray idle. Group by org with section headers ICS MCP CTD Special Data. Show vote chip inline when agent has voted.
Center column: scrollable chat thread. Messages appear as bordered panels with agent emoji name org in header. Right-aligned panels for user and Claude Code messages. Left-aligned for agents MCPs and DB. Vote chips 🔴🟡🟢 inline. Tool call results shown as indented blocks with ◆ GTI ◈ Policy ⛁ DB prefixes. Auto-scrolls to latest message.
Right column: vote tracker with three progress bars labeled APPROVE CONDITIONAL REJECT using block characters, intelligence panel showing GTI status and SQLite pattern matches, open findings list, round indicator, token counter.

Health Map tab: scrollable panel showing all 14 IAM tools grouped by domain. Each tool shows: emoji health percentage as ASCII progress bar colored by threshold green above 65 amber 40 to 65 red below 40, gap count badge, feature coverage summary. Datadog panel in corner showing server metrics read from iam_insights if available. Policy coverage bars for I&A and access control policies.

App reads state from /mnt/d/mrrobot/ui/state.json updated by Claude Code hooks. Starts with empty state and populates as session runs.

Also create /mnt/d/mrrobot/ui/state.json with empty initial structure matching the app schema.
Also create /mnt/d/mrrobot/ui/start.sh that activates the app.

Save all files and show import statements to confirm dependencies are met.
