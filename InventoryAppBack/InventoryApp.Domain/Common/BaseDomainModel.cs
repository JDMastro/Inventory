namespace InventoryApp.Domain.Common
{
    /// <summary>
    /// Esta clase representa una clase padre que va a contener algunos atributos
    /// en común con las demás clases
    /// </summary>
    public abstract class BaseDomainModel
    {
        /// <summary>
        /// Representa el identificador del registro
        /// </summary>
        public int Id { get; set; }
        /// <summary>
        /// Representa la fecha en que fue creado el registro
        /// </summary>
        public DateTime CreatedDate { get; set; }
        /// <summary>
        /// Representa por quien fue creado el registro
        /// </summary>
        public string? CreatedBy { get; set; }
        /// <summary>
        /// Representa la fecha en que fue creado el registro
        /// </summary>
        public DateTime? LastModifiedDate { get; set; }
        /// <summary>
        /// Representa quien fue la última persona en modificar el registro
        /// </summary>
        public string? LastModifiedBy { get; set; }
    }
}
