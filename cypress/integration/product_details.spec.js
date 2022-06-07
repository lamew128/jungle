describe("Navigate to product page", () => {

  it("should visit root", () => {
    cy.visit("/");
  });

  it("Can click the products on the page", () => {
    cy.visit("/");
    cy.get("[alt='Giant Tea']").click();
    
    cy.contains("Giant Tea");
  });

});