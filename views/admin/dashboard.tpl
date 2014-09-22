{extends file="_mi.tpl"}

{block name="pageMainContent"}
	<div class="small-12 medium-10 large-7 columns mainPanel"> <!-- main column -->

		<div class="dashboard">
			<header class="sectionTitle"><h1>Dashboard</h1></header>

			<div class="row">
				<div class="small-12 columns">
					<div class="panel callout"></div>
				</div>
				<div class="small-12 medium-6 columns">
					<div class="panel callout"></div>
				</div>
				<div class="small-12 medium-6 columns">
					<div class="panel callout"></div>
				</div>

				<div class="small-12 columns">
					<div data-alert="" class="alert-box radius">
						<div class="radius_msg">This is a standard alert (div.alert-box.radius).</div>
						<a href="" class="close">x</a>
					</div>

					<div data-alert="" class="alert-box success">
						<div class="success_msg">This is a success alert (div.alert-box.success).</div>
						<a href="" class="close">x</a>
					</div>

					<div data-alert="" class="alert-box secondary">
						<div class="secondary_msg">This is a secondary alert (div.alert-box.radius).</div>
						<a href="" class="close">x</a>
					</div>

					<a href="#" data-reveal-id="myModal" class="button large rounded">Click Me For A Modal</a>

					<div id="myModal" class="reveal-modal" data-reveal>
						<h2>Awesome. I have it.</h2>
						<p class="lead">Your couch.  It is mine.</p>
						<p>I'm a cool paragraph that lives inside of an even cooler modal. Wins!</p>
						<a class="close-reveal-modal">&#215;</a>
					</div>
				</div>

				<div class="small-12 columns">
					<form>
						<div class="row">
							<div class="large-12 columns">
								<label>Input Label</label>
								<input type="text" placeholder="large-12.columns" />
							</div>
						</div>
						<div class="row">
							<div class="large-4 medium-4 columns">
								<label>Input Label</label>
								<input type="text" placeholder="large-4.columns" />
							</div>
							<div class="large-4 medium-4 columns">
								<label>Input Label</label>
								<input type="text" placeholder="large-4.columns" />
							</div>
							<div class="large-4 medium-4 columns">
								<div class="row collapse">
									<label>Input Label</label>
									<div class="small-9 columns">
										<input type="text" placeholder="small-9.columns" />
									</div>
									<div class="small-3 columns">
										<span class="postfix">.com</span>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="large-12 columns">
								<label>Select Box</label>
								<select>
									<option value="husker">Husker</option>
									<option value="starbuck">Starbuck</option>
									<option value="hotdog">Hot Dog</option>
									<option value="apollo">Apollo</option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="large-6 medium-6 columns">
								<label>Choose Your Favorite</label>
								<input type="radio" name="pokemon" value="Red" id="pokemonRed"><label for="pokemonRed">Radio 1</label>
								<input type="radio" name="pokemon" value="Blue" id="pokemonBlue"><label for="pokemonBlue">Radio 2</label>
							</div>
							<div class="large-6 medium-6 columns">
								<label>Check these out</label>
								<input id="checkbox1" type="checkbox"><label for="checkbox1">Checkbox 1</label>
								<input id="checkbox2" type="checkbox"><label for="checkbox2">Checkbox 2</label>
							</div>
						</div>
						<div class="row">
							<div class="large-12 columns">
								<label>Textarea Label</label>
								<textarea placeholder="small-12.columns"></textarea>
							</div>
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>
{/block}