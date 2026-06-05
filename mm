Update /mnt/d/mrrobot/.claude/commands/ruba.md with these enhancements then copy to ~/.claude/commands/ruba.md:

VISUAL FORMAT — every agent message must use this exact structure:
┌─────────────────────────────────────────────────────────────┐
│ [EMOJI] [AGENT NAME] · [ORG]                    [R# · TIME] │
│ [→ @AgentName if replying to someone]                       │
├─────────────────────────────────────────────────────────────┤
│ [message body — full reasoning, not truncated]              │
│                                                             │
│ 📎 [citations: NIST ctrl · NYDFS § · INC-XXXX]            │
│ [🔴 REJECT / 🟡 CONDITIONAL / 🟢 APPROVE — only when voting]│
└─────────────────────────────────────────────────────────────┘

AGENT EMOJIS:
🏗 ICS Architect  ⭐ ICS Principal  👔 ICS Director  📊 ICS Manager
🔑 FID Engineer   🔒 PPM Engineer   🌿 PaLM Engineer  🛡 IAC Engineer
🔍 CyberSquad     🎯 CTI Agent      👁 SecOps         ⚡ Threat Model
📋 SAFe Agent     ◆ GTI MCP         ◈ Policy Lookup   ⛁ SQLite DB

DISCUSSION RULES — replace sequential voting with organic discussion:

STEP 1 — Orchestrator reads proposal, queries SQLite DB and /policy automatically, shows results in inline tool blocks before any agent speaks.

STEP 2 — Each relevant agent gives a brief opening statement (2-3 sentences max). No voting yet.

STEP 3 — ORGANIC DISCUSSION LOOP:
After each agent statement, check: are there open questions? direct challenges? requests for data?
If YES — the challenged agent or questioning agent responds NEXT regardless of order.
Any agent can @mention another agent by name to trigger their specific response.
If an agent says they need GTI context or policy confirmation, run the tool immediately inline:

◆ GTI QUERY ─────────────────────────────────────────────────
Query: [what was searched]
Result: [finding · CVE · actor · exploitation status]
──────────────────────────────────────────────────────────────

◈ POLICY LOOKUP ──────────────────────────────────────────────
Query: [search terms]  Source: [policy name · section · page]
Result: [exact relevant text]
──────────────────────────────────────────────────────────────

⛁ DB QUERY ──────────────────────────────────────────────────
Pattern: [category · count · matched tickets]
──────────────────────────────────────────────────────────────

Then the agent continues their point after seeing the tool result.

STEP 4 — Discussion continues until ALL of these are true:
- No agent has an unanswered direct question to another agent
- No agent has an outstanding doubt requiring data
- Every agent has responded to challenges directed at them
- At least 2 full exchanges have occurred

STEP 5 — Each agent issues final vote. Format vote chip prominently.

STEP 6 — Final vote table:
╔══════════════════════════════════════════════════════════════╗
║  RUBA VERDICT — Reasoned Unified Bench Assessment           ║
╠══════════════════════════════════════════════════════════════╣
║  🏗 Architect    🔴 REJECT      [one-line condition]        ║
║  ⭐ Principal    🟡 CONDITIONAL  [one-line condition]        ║
║  🔑 FID Eng      🟡 CONDITIONAL  [one-line condition]        ║
║  ⚡ Threat Model 🔴 REJECT      [one-line condition]        ║
║  📋 SAFe Agent   🟡 CONDITIONAL  [one-line SAFe note]       ║
╠══════════════════════════════════════════════════════════════╣
║  MAJORITY: 🟡 CONDITIONAL (3) · 🔴 REJECT (2) · 🟢 (0)    ║
║  OUTCOME: [one decisive sentence]                           ║
╚══════════════════════════════════════════════════════════════╝

OVERRIDE HANDLING — if user overrides, ask for reasoning, update agent override_history field, confirm what was learned.

Save both files and show me a preview of what one agent message block looks like using a sample topic.
