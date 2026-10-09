<?= $this->extend('templates/main') ?>

<?= $this->section('content') ?>
<section class="page-hero compact shell"><p class="eyebrow">Complete schedule</p><div class="title-row"><div><h1>Task List</h1><p>Every task in the database, ordered from the earliest date forward.</p></div><span class="count-badge"><?= count($tasks) ?> records</span></div></section>
<section class="table-section shell"><div class="table-wrap"><table><thead><tr><th>Task</th><th>Status</th><th>Task date</th><th>Created</th></tr></thead><tbody><?php foreach ($tasks as $task): ?><tr><td><strong><?= esc($task['title']) ?></strong></td><td><span class="task-status <?= esc($task['status']) ?>"><?= esc(ucfirst($task['status'])) ?></span></td><td><?= esc(date('F j, Y', strtotime($task['task_date']))) ?></td><td><?= esc(date('M j, Y g:i A', strtotime($task['created_at']))) ?></td></tr><?php endforeach; ?></tbody></table></div></section>
<?= $this->endSection() ?>
