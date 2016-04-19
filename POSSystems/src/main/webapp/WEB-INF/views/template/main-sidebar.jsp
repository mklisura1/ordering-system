
<!-- Left side column. contains the sidebar -->
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<ul class="sidebar-menu">
			<li class="header">
				<h4>
					Logged user: <b>${user.username}</b>
				</h4>
			</li>
		</ul>
		<!-- search form -->
		<form action="#" method="get" class="sidebar-form">
			<div class="input-group">
				<input type="text" name="q" class="form-control"
					placeholder="Search..."> <span class="input-group-btn">
					<button type="submit" name="search" id="search-btn"
						class="btn btn-flat">
						<i class="fa fa-search"></i>
					</button>
				</span>
			</div>
		</form>
		<!-- /.search form -->
		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">

			<li class="treeview"><a href="#"> <i class="fa fa-users"></i>
					<span>Contacts</span> <i class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="/OrderingSystem/contacts/list"><i
							class="fa fa-list-ul"></i> List of contacts</a></li>
					<li><a href="/OrderingSystem/contacts/add"><i
							class="fa fa-user-plus"></i> Add contact</a></li>

				</ul></li>

			<li class="treeview"><a href="#"> <i class="fa fa-clone"></i>
					<span>Accounts</span> <i class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="/OrderingSystem/account/list"><i
							class="fa fa-list-ul"></i> List of accounts</a></li>
					<li><a href="/OrderingSystem/account/add"><i
							class="fa fa-user-plus"></i> Add account</a></li>
				</ul></li>

			<li class="treeview"><a href="#"> <i class="fa fa-bars"></i>
					<span>Loyalty</span> <i class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="#"><i class="fa fa-list-ul"></i> Members<i
							class="fa fa-angle-left pull-right"></i></a>
						<ul class="treeview-menu">
							<li><a href="/OrderingSystem/member/list"><i
									class="fa fa-users"></i> List of members</a></li>
							<li><a href="/OrderingSystem/member/add"><i
									class="fa fa-user-plus"></i> Add member</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-file-text-o"></i>
							Transactions<i class="fa fa-angle-left pull-right"></i></a>
						<ul class="treeview-menu">
							<li><a href="/OrderingSystem/transaction/list"><i
									class="fa fa-list-ol"></i> List of transactions</a></li>
							<li><a href="/OrderingSystem/transaction/add"><i
									class="fa fa-list-alt"></i> Add transactions</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-credit-card"></i>
							Membership cards<i class="fa fa-angle-left pull-right"></i></a>
						<ul class="treeview-menu">
							<li><a href="/OrderingSystem/mcard/list"><i
									class="fa fa-list-ol"></i> List of membership cards</a></li>
							<li><a href="/OrderingSystem/mcard/add"><i
									class="fa fa-list-alt"></i> Add membership card</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-book"></i> Programs<i
							class="fa fa-angle-left pull-right"></i></a>
						<ul class="treeview-menu">
							<li><a href="/OrderingSystem/program/list"><i
									class="fa fa-list-ol"></i> List of programs</a></li>
							<li><a href="/OrderingSystem/program/add"><i
									class="fa fa-file-text"></i> Add program</a></li>
						</ul></li>
				</ul></li>

			<li class="treeview"><a href="#"> <i class="fa fa-cogs"></i>
					<span>Services</span> <i class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="/OrderingSystem/services/list"><i
							class="fa fa-list-ul"></i> List of services</a></li>
					<li><a href="/OrderingSystem/services/add"><i
							class="fa fa-user-plus"></i> Add service</a></li>
				</ul></li>

			<li class="treeview"><a href="#"> <i class="fa fa-cubes"></i>
					<span>Products</span> <i class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="/OrderingSystem/products/list"><i
							class="fa fa-list-ul"></i> List of products</a></li>
					<li><a href="/OrderingSystem/products/add"><i
							class="fa fa-user-plus"></i> Add product</a></li>
				</ul></li>

			<li class="treeview"><a href="#"> <i class="fa fa-exchange"></i>
					<span>Partners</span> <i class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="/OrderingSystem/partners/list"><i
							class="fa fa-list-ul"></i> List of partners</a></li>
					<li><a href="/OrderingSystem/partners/add"><i
							class="fa fa-user-plus"></i> Add partner</a></li>
				</ul>
		</ul>


	</section>
	<!-- /.sidebar -->
</aside>