<div class="languages form">
<?php echo $this->Form->create('Course'); ?>
	<fieldset>
		<legend><?php echo __('Admin Edit Course'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('title');
		echo $this->Form->input('publishstatus');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
