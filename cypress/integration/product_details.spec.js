describe("Navigation", () => {

  it("should visit root", () => {
    cy.visit("/");
  });

  it("Can click the products on the page", () => {
    cy.get("[alt='Giant Tea']").click();
    
    cy.contains("Giant Tea");
  });

});