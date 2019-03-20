<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchBar.ascx.cs" Inherits="doctor.SearchBar" %>
<div id="tg-innerbanner" class="tg-innerbanner tg-haslayout">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-xs-12">
						
                            <div class="tg-formtheme tg-formsearch">
							<fieldset>
								<div class="tg-select">
									<select>
										<option>Doctors</option>
										<option>Hospitals</option>
										<option>Phramacy</option>
										<option>Clinics</option>
										<option>Blood Banks</option>
									</select>
								</div>
								<div class="tg-select">
									<select>
										<option>Dentist</option>
										<option>Specilist</option>
										<option>Heart Surgeon</option>
										<option>neurologist</option>
									</select>
								</div>
								<div class="tg-select">
									<select>
										<option value="">Select Location</option>
										<option value="aberdeen">Aberdeen</option>
										<option value="aldershot">Aldershot</option>
										<option value="altrincham">Altrincham</option>
										<option value="aylesbury">Aylesbury</option>
										<option value="bamber">Bamber</option>
										<option value="bangor">Bangor</option>
										<option value="batley">Batley</option>
										<option value="bebingto">Bebingto</option>
										<option value="bedford">Bedford</option>
										<option value="birmingham">Birmingham</option>
										<option value="blackpool">Blackpool</option>
										<option value="brentwood">Brentwood</option>
										<option value="bristol">Bristol</option>
										<option value="cardiff">Cardiff</option>
										<option value="carlisle">Carlisle</option>
										<option value="crawley">Crawley</option>
										<option value="darlington">Darlington</option>
										<option value="eastleigh">Eastleigh</option>
										<option value="edinburg">Edinburg</option>
										<option value="esher">Esher</option>
										<option value="glasgow-sco">Glasgow SCO</option>
										<option value="guildford">Guildford</option>
										<option value="halesowen">Halesowen</option>
										<option value="halifax">Halifax</option>
										<option value="hamilton">Hamilton</option>
										<option value="leeds">Leeds</option>
										<option value="leicester">Leicester</option>
										<option value="liverpool">Liverpool</option>
										<option value="london">London</option>
										<option value="louisville">Louisville</option>
										<option value="manchester">Manchester</option>
										<option value="sheffield">Sheffield</option>
									</select>
								</div>
								<div class="tg-select">
									<select>
										<option>City/State</option>
										<option>Manchester</option>
										<option>Birmingham</option>
										<option>Bradford</option>
									</select>
								</div>
								<input type="text" name="category" class="form-control" placeholder="Specialities, Doctors, Hospitals, Labs, Spas...">
								<button type="submit" class="tg-btnformsearch"><i class="fa fa-search"></i></button>
							</fieldset>
						</div>
					</div>
				</div>
			</div>
		</div>