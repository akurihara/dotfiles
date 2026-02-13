---
name: docs-to-stories
description: Transform requirements documents into Jira story markdown files
allowed-tools: Read, Write, Glob, Bash(mkdir *), mcp__googledrive__get_document_structure, mcp__googledrive__get_document_section, mcp__googledrive__get_document_preview
---

# Docs to Stories

Transform requirements documents into well-structured Jira story markdown files.

## Usage

```
/docs-to-stories <document>
```

Where `<document>` is one of:
- **Google Doc URL**: `https://docs.google.com/document/d/...`
- **Google Doc ID**: `1abc123...` (the ID portion of a Google Doc URL)
- **Local file path**: `./requirements.md` or `/path/to/document.md`

## Input Sources

### Google Docs
Use MCP tools to read the document:
1. `mcp__googledrive__get_document_structure` - Get document structure and section list
2. `mcp__googledrive__get_document_section` - Fetch full content of relevant sections

Extract the file ID from URLs like:
- `https://docs.google.com/document/d/FILE_ID/edit`

### Local Files
Use the `Read` tool to read markdown or text files directly.

## Workflow

Follow this two-phase approach:

### Phase 1: Plan Stories

1. **Read the document** using the appropriate method based on input type
2. **Analyze requirements** and identify distinct stories based on:
   - Separate functional areas or features
   - Independent deliverables that can be worked on separately
   - Natural boundaries in the requirements (sections, phases, components)
3. **Present the proposed story list** to the user showing:
   - Story number and title for each identified story
   - Brief description of what each story covers
4. **Ask the user for**:
   - Epic link (optional) - Jira epic key like `PROJ-123`
   - Output directory (default: `stories/` subdirectory in the current directory)
   - Any adjustments to the story list (add, remove, combine, split)

### Phase 2: Generate Stories

1. **Create output directory** if it doesn't exist
2. **Generate numbered story files** with format `NN-story-title.md`:
   - Use zero-padded numbers: `01-`, `02-`, etc.
   - Use kebab-case for titles: `01-user-authentication.md`
3. **Report created files** to the user with full paths
4. **Clean up output directory** by deleting the output directory and its contents

## Story Format

Use this template for each generated story:

```markdown
## [Story Title]

**Epic:** [EPIC-LINK or "TBD"]

### Deliverable
[Clear statement of what needs to be done - the "what"]

### Context
[Background information and reasoning - the "why"
Include references to the source document where relevant]

### Implementation Notes
[Technical approach, considerations, or open questions
If the requirements leave things open, note them here as questions to resolve]

### Testing Criteria
- [ ] [Specific, verifiable test scenario]
- [ ] [Another test scenario]
- [ ] [Edge cases or error conditions to verify]
```

## Guidelines

### Identifying Distinct Stories

Create separate stories when:
- Work can be done and delivered independently
- Different team members could work on items in parallel
- There are clear functional boundaries
- The scope would be too large for a single story

Consolidate into one story when:
- Items are tightly coupled and must be done together
- Splitting would create artificial dependencies
- The combined scope is still reasonably sized

### Story Quality

- **Titles**: Should be concise and action-oriented (e.g., "Implement user login flow")
- **Deliverables**: Be specific about what "done" looks like
- **Context**: Reference the source document; explain why this matters
- **Implementation Notes**: Capture technical decisions or open questions from the doc
- **Testing Criteria**: Include 3-5 specific, verifiable scenarios

### Handling Ambiguity

When requirements are unclear:
- Note open questions in Implementation Notes
- Don't invent requirements - flag what needs clarification
- Include "[TBD]" markers for information that needs to be filled in

### Referencing Source Material

When the source document has specific details:
- Quote relevant requirements directly
- Reference section names from the source doc
- Preserve important context about constraints or decisions
