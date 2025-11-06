## Jira Integration

### Atlassian CLI (`acli`)
Use the Atlassian CLI to interact with Jira tickets:

#### Common Commands
- `acli jira workitem search --jql "assignee = currentUser()"` - Show all tickets assigned to you
- `acli jira workitem search --jql "assignee = currentUser() AND status not in (Closed, Cancelled, Done, Resolved)"` - Show only active tickets assigned to you
- `acli jira workitem view [TICKET-KEY]` - View details of a specific ticket
- `acli jira workitem search --jql "project = [PROJECT-KEY]"` - Search tickets in a specific project
- `acli jira workitem create --summary "New Task" --project "TEAM" --type "Task" --parent "MOON-2408` - Create a new ticket with a certain parent. Always ask which parent a new ticket should be assigned to. Also ask whether the user would like to provide the description field.

#### JQL Query Examples
- `assignee = currentUser()` - Tickets assigned to you
- `status = "In Progress"` - Tickets in progress
- `project = MOON` - All tickets in the MOON project
- `priority = "P1 - Highest"` - High priority tickets
- `project = MOON AND type = Epic` - Epics in the MOON project
