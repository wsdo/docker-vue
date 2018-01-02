<template>
	<div>
		<div style="margin-top: 15px;">
			<el-row :gutter="20">
			  <el-col :span="12" :offset="6">
			  	<div class="grid-content bg-purple"></div>
			  	  <el-input placeholder="请输入网址" v-model="input5" class="input-with-select">
			    <el-button slot="append" icon="el-icon-search"></el-button>
			  </el-input>

			  </el-col>
			</el-row>
		</div>
	</div>
</template>
<style>
  .el-select .el-input {
    width: 130px;
  }
  .input-with-select .el-input-group__prepend {
    background-color: #fff;
  }
</style>
<script>
export default {
  data() {
    return {
      input3: '',
      input4: '',
      input5: '',
      select: ''
    }
  }
}
</script>