describe("add to cart", () => {

  it("should visit root", () => {
    cy.visit("/");
  });

  it("Can click add", () => {
    cy.visit("/");
    cy.contains("(0)");
    cy.get(".button_to").first().submit();
    cy.contains("(1)");
  });

});